
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{


	SESprite hi1;
	SESprite hi2;
	SESprite hi3;
	SESprite itsme;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("white"), get_scene_width(), get_scene_height());
	rsc.prepare_image("1", "1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("2", "2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("3", "3", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("itsme", "itsme", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "arial color=black", 40);
	
	hi1 = add_sprite_for_image(SEImage.for_resource("1"));
	hi2 = add_sprite_for_image(SEImage.for_resource("2"));
	hi3 = add_sprite_for_image(SEImage.for_resource("3"));
	itsme = add_sprite_for_image(SEImage.for_resource("itsme"));
	text = add_sprite_for_text("Scenes", "myfont");
	
	hi1.move(0,0);
	hi2.move(0,get_scene_height()*0.5);
	hi3.move(get_scene_width()*0.5,0);
	itsme.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new First());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Second());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Third());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Fourth());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}