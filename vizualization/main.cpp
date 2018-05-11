#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>
#include <stdlib.h>
#include <time.h>

using namespace sf;

#define width_space 250
#define height_space 230
#define width_screen 1366
#define height_screen 768

enum STATES
{
	opened,
	closed,
	breaking,
	blocked,
	opened_sel,
	closed_sel,
	breaking_sel,
	blocked_sel
};

char title[] = "STM32 Project";
char name[] = "Safe ##";

RenderWindow window(VideoMode(width_screen, height_screen), title);

Texture texture_bl, texture_br, texture_op, texture_cl;
Texture texture_bl_sel, texture_br_sel, texture_op_sel, texture_cl_sel;

Sprite sprites[15];

Font font;
Text text("", font, 20), state_text("", font, 30);

Sound sound;

enum STATES states[15];

bool was_change = true;
bool there_is_sel = false;
bool is_start_of_programm = true;
int num_of_sel = 0;

void All_Init();
void Init_Textures();
void Init_Text();
void Init_Sprites();
void Init_States();
void Init_Sound();
void Draw();
void Event_Handler();
void Reset_Sel();
void Reset_Item();
void Select_Item();
void Block_Item();

int main()
{
	All_Init();

	SoundBuffer buffer;
	buffer.loadFromFile("files/change.wav");

	sound.setBuffer(buffer);

	srand(time(NULL));
	Clock clock;

	while (window.isOpen())
	{
		Event_Handler();

		int time = clock.getElapsedTime().asSeconds();
		if(time % 10 == 2)
		{
			int j = rand() % 4 - 1;

			for(int i = 0; i < j; i ++)
			{
				int n = rand() % 14 + 1;
				if(states[n] == opened)
				{
					states[n] = closed;
					was_change = true;
					sound.play();
				}
				else if(states[n] == closed)
				{
					states[n] = opened;
					was_change = true;
					sound.play();
				}
			}


			clock.restart();
		}

		if(was_change)
		{
			window.clear(Color::White);
			Draw();
			window.display();

			was_change = false;
		}
	}

	return 0;
}

void All_Init()
{
	Init_Textures();
	Init_Text();
	Init_Sprites();
	Init_States();
	Init_Sound();
}

void Init_Textures()
{
	texture_bl.loadFromFile("files/bl.jpeg");
	texture_br.loadFromFile("files/br.jpeg");
	texture_op.loadFromFile("files/op.jpeg");
	texture_cl.loadFromFile("files/cl.jpeg");
	texture_bl_sel.loadFromFile("files/bl_sel.jpeg");
	texture_br_sel.loadFromFile("files/br_sel.jpeg");
	texture_op_sel.loadFromFile("files/op_sel.jpeg");
	texture_cl_sel.loadFromFile("files/cl_sel.jpeg");
}

void Init_Text()
{
	font.loadFromFile("files/CyrilicOld.TTF");

	text.setFont(font);
	text.setColor(Color::Red);
	text.setStyle(Text::Bold);

	state_text.setFont(font);
	state_text.setColor(Color::Red);
	state_text.setStyle(Text::Bold);
}

void Init_Sprites()
{
	for(int j = 0; j < 3; j++)
		for(int i = 0; i < 5; i++)
			sprites[5 * j + i].setPosition(width_space * i + 50, height_space * j + 50);
}

void Init_States()
{
	for(int i = 0; i < 15; i++)
		states[i] = opened;
}

void Init_Sound()
{
}

void Draw()
{
	for(int j = 0; j < 3; j++)
	{
		for(int i = 0; i < 5; i++)
		{
			int n = j * 5 + i;

			switch(states[j * 5 + i])
			{
				case opened:
					sprites[n].setTexture(texture_op);
					state_text.setString("Opened");
					break;
				case closed:
					sprites[n].setTexture(texture_cl);
					state_text.setString("Closed");
					break;
				case breaking:
					sprites[n].setTexture(texture_br);
					state_text.setString("Breaking");
					break;
				case blocked:
					sprites[n].setTexture(texture_bl);
					state_text.setString("Blocked");
					break;
				case opened_sel:
					sprites[n].setTexture(texture_op_sel);
					state_text.setString("Opened");
					break;
				case closed_sel:
					sprites[n].setTexture(texture_cl_sel);
					state_text.setString("Closed");
					break;
				case breaking_sel:
					sprites[n].setTexture(texture_br_sel);
					state_text.setString("Breaking");
					break;
				case blocked_sel:
					sprites[n].setTexture(texture_bl_sel);
					state_text.setString("Blocked");
					break;
			}

			window.draw(sprites[n]);

			state_text.setPosition(width_space * i + 90, height_space * j + 170);
			window.draw(state_text);

			text.setPosition(width_space * i + 100, height_space * j + 50);

			n++;
			if(n > 9)
			{
				name[5] = n / 10 + '0';
				name[6] = n % 10 + '0';
			}
			else
			{
				name[5] = n + '0';
				name[6] = ' ';
			}

			text.setString(name);
			window.draw(text);
		}
	}
}

void Event_Handler()
{
	Event event;

	while (window.pollEvent(event))
	{
		if (event.type == Event::Closed)
			window.close();
		if (event.type == Event::KeyPressed)
			switch (event.key.code)
			{
				case Keyboard::Escape:
					if(there_is_sel)
						Reset_Sel();
					break;
				case Keyboard::Space:
					if(!there_is_sel)
					{
						num_of_sel = 0;
						Select_Item();
					}
					break;
				case Keyboard::B:
					if(there_is_sel)
					{
						Block_Item();
						Reset_Sel();
					}
					break;
				case Keyboard::R:
					if(there_is_sel)
					{
						Reset_Item();
						Reset_Sel();
					}
					break;
				case Keyboard::Left:
					if(there_is_sel)
					{
						num_of_sel--;
						if(num_of_sel < 0)
							num_of_sel = 14;
						Select_Item();
					}
					break;
				case Keyboard::Right:
					if(there_is_sel)
					{
						num_of_sel++;
						num_of_sel = num_of_sel % 15;
						Select_Item();
					}
					break;
				case Keyboard::Up:
					if(there_is_sel)
					{
						num_of_sel -= 5;
						if(num_of_sel < 0)
							num_of_sel += 15;
						Select_Item();
					}
					break;
				case Keyboard::Down:
					if(there_is_sel)
					{
						num_of_sel += 5;
						num_of_sel = num_of_sel % 15;
						Select_Item();
					}
					break;
			}
	}
}

void Reset_Sel()
{
	for(int i = 0; i < 15; i++)
		switch (states[i])
		{
			case opened_sel:
				states[i] = opened;
				break;
			case closed_sel:
				states[i] = closed;
				break;
			case blocked_sel:
				states[i] = blocked;
				break;
			case breaking_sel:
				states[i] = breaking;
				break;
		}

	there_is_sel = false;
	was_change = true;
}

void Reset_Item()
{
	states[num_of_sel] = opened;
	sound.play();
	was_change = true;
}

void Select_Item()
{
	Reset_Sel();

	switch(states[num_of_sel])
	{
		case opened:
			states[num_of_sel] = opened_sel;
			break;
		case closed:
			states[num_of_sel] = closed_sel;
			break;
		case blocked:
			states[num_of_sel] = blocked_sel;
			break;
		case breaking:
			states[num_of_sel] = breaking_sel;
			break;
	}

	there_is_sel = true;
	was_change = true;
}

void Block_Item()
{
	states[num_of_sel] = blocked;
	sound.play();
	was_change = true;
}
