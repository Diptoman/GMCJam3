if (!_isDead) && (!_isStopped)
{
    obj_control._timeScale = 0;
    _isDead = true;
    alarm[1] = 60;
    
    x = xx;
    y = yy;
    
    for(i = 0; i < 4; i++)
    {
        inst = instance_create(x,y - 64,obj_main_death_pieces);
        inst.image_index = 1;
        inst = instance_create(x,y - 64,obj_main_death_pieces);
        inst.image_index = 3;
    }
    
    for(i = 0; i < 2; i++)
    {
        inst = instance_create(x,y - 64,obj_main_death_pieces);
        inst.image_index = 2;
    }
    
    inst = instance_create(x,y - 64,obj_main_death_pieces);
    inst.image_index = 0;
}
