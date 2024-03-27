customers = ds_list_create();

ds_list_add(customers, spr_customer1);
ds_list_add(customers, spr_customer2);
ds_list_add(customers, spr_customer3);
ds_list_add(customers, spr_customer4);


customerList = ds_list_create()
bob = new Customer();
bob.customerOrder = "Whiskey";
bob.customerSatisfactionMessage = "";
bob.sprite = spr_customer1;
//...
ds_list_add(customerList,bob);

alejandro = new Customer();
alejandro.customerOrder = "Martini";
alejandro.customerSatisfactionMessage = "Como estas?";
alejandro.sprite = spr_customer2;
ds_list_add(customerList,alejandro);