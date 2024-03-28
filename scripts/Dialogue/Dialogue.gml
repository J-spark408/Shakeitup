// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dialogue() constructor {
	_dialogs = [];
	
	add = function(_sprite,_message) {
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message
		})
	}
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	count = function() {
		return array_length(_dialogs);	
	}
}

//function Customer() constructor {
//	customerOrder = ""; //WHISKEY

//	customerScore = cScore;
//	sprite = cSprite;
//	introCustomerMessage = ds_list_create();
//	customerSatisfactionMessage = ds_list_create();
//	dialog = new Dialogue(); //Customer.dialog to access add/pop/count or _dialogs
	
//	drawDialogBoxForIntro = function(){
//		randomIndex = 0; //random index based on size
//		dialog.add(sprite, ds_list_find_value(introCustomerMessage,randomIndex));
//		//instance_create_layer(0,0,"Instances",DialogCustomers); //TODO figure out what object to create
//	}
	
//	drawDialogBoxForSatisfaction = function(){
//		dialog.add(sprite, customerSatisfactionMessage);
//		instance_create_layer(0,0,"Instances",DialogCustomers);
//	}
	
//	//create function to randomly grab a introcustomermessage
	
//}