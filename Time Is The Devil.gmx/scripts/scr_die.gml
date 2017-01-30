if (!_isDead) && (!_isStopped)
{
    obj_control._timeScale = 0;
    _isDead = true;
    alarm[1] = 60;
    
    //Reset list
    for(i=0; i < ds_list_size(obj_control._collectedQuestions); i++)
    {
        q = ds_list_find_value(obj_control._collectedQuestions, i);
        ds_list_add(obj_control._availableQuestions, q);
    }
    ds_list_clear(obj_control._collectedQuestions);
    
    instance_create(x,y,obj_deathshake);
    
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
    
    x = xx;
    y = yy;
}
