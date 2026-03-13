// Login Process and Customer Details
let signin = {
    userName: "HarryHamster",
    passWord: "Harrylnwza007",
    firstName: "Harry",
    lastName: "Hamster",
    grender: "men",
    age: 27,
    address: "Bangkok, Thailand",
    email: "customer_00@email.com",
    phone: "080-123-4567",
}

let login = {
    customerID: "Cus0001",
    userName: "Harry Hamster",
    passWord: "Harrylnwza007",
}

// Product

/* Catagory
    1. Hamster Food
        1.1 Ready-made hamster food : อาหารแฮมเตอร์สำเร็จรูป
        1.2 Roasted sunflower seeds : เมล็ดทานตะวันอบ
        1.3 Dried mealworms : หนอนนกอบแห้ง
        1.4 Taro fish snack : ปลาเส้นทาโร่
        1.5 Fruity hamster : ผลไม้
    2. Hamster Equipment
        2.1 Hamster Cage : กรงเลี้ยงแฮมสเตอร์
        2.2 Hamster water bottle : ขวดน้ำดื่ม
        2.3 Hamster Wheel : ลู่วิ่งวงกลม
*/

let category = [
    {
        categoryID : "T0001",
        categoryName : "Hamster food" 
    },
    {
        categoryID : "T0002",
        categoryName : "Hamster Equipment"
    }
]

// let hamsterFood = ["Ready-made hamster food", "Roasted sunflower seeds", "Dried mealworms", "Taro fish snack", "Fruity hamster"]

// let hamsterEquipment = ["Hamster Cage", "Hamster water bottle", "Hamster Wheel"]

const product = [
    {
        productID: "PF001",
        categoryID: "CF001",
        productName: "Ready-made hamster food",
        buyPerPiece: 120,
        inventory: 100,
        totalBuy : 120*100,
        supplier: "Supplier01",
    },
    {
        productID: "PF002",
        categoryID: "CF001",
        productName: "Roasted sunflower seeds",
        buyPerPiece: 9,
        inventory: 100,
        totalBuy : 9*100,
        supplier: "Supplier02",
    },
        {
        productID: "PF003",
        categoryID: "CF001_03",
        productName: "Dried mealworms",
        buyPerPiece: 65,
        inventory: 100,
        totalBuy : 65*100,
        supplier: "Supplier02",
    },
        {
        productID: "PF004",
        categoryID: "CF001_04",
        productName: "Taro fish snack",
        buyPerPiece: 55,
        inventory: 100,
        totalBuy : 55*100,
        supplier: "Supplier02",
    },
        {
        productID: "PF005",
        categoryId: "CF001_05",
        productName: "Fruity hamster",
        buyPerPiece: 130,
        inventory: 100,
        totalBuy : 130*100,
        supplier: "Supplier01",
    },
    {
        productID: "PE006",
        categoryID: "CF002_01",
        productName: "Hamster Cage",
        buyPerPiece: 850,
        inventory: 10,
        totalBuy : 850*10,
        supplier: "Supplier03",
    },
        {
        productID: "PE007",
        categoryID: "CF002_02",
        productName: "Hamster water bottle",
        buyPerPiece: 60,
        inventory: 30,
        totalBuy : 60*30,
        supplier: "Supplier03",
    },
        {
        productID: "PE008",
        categoryID: "CF002_03",
        productName: "Hamster Wheel",
        buyPerPiece: 200,
        inventory: 10,
        totalBuy : 200*10,
        supplier: "Supplier03",
    },
]

// Order Transition
let order = [
    {
        orderID : "OD0001",
        customerID : login.customerID [  
            {    
                orderItem : 1,
                productID : product[3],
                quality : 3 ,
                soldPerPiece : 129,
                totalSold : 3*129,
            },
            {
                orderItem : 2,
                productID : product[6],
                quality : 1 ,
                soldPerPiece : 120,
                totalSold : 1*120,
            }   
        ]
    }    
    // {
    //     orderID : "OD0002",
    //     customerId : login.customerID [
    //         {
    //             orderItem : 1,
    //             productID : productFood[5],
    //             quality : 2 ,
    //             soldPerPiece : 199,
    //             totalSold : (quality*soldPerPiece),
    //         },
    //         {
    //             orderItem : 2,
    //             productID : productEquipment[2],
    //             quality : 1 ,
    //             soldPerPiece : 300,
    //             totalSold : (quality*soldPerPiece),
    //         }
    //     ]
    // }
]

let inventory = [
    {
        productID : product[3].productID,
        inventored : 97,
    },
    {
        productName: product[6].productID,
        inventored : 29,
    },
]

let cart = {
    cartID : "CAR0001",
    orderID : order[0],
}

let payment = {
    paymentID : "PY0001",
    cartID : cart.cartID,
    paymentDate : "12/3/2026",
    amount : 507,
    paymentStatus : "Paid",
}

let transfer = {
    transferId : "TF0001",
    paymentId : payment.paymentId,
    status : "sent",
}

let comment = {
    commentId : "CM0001",
    customerId : login.customerId,
    transferId : transfer.transferId,
    rating : 5,
    commentText : "Good!!!",
    commentDate : "12/3/2026"
}

    
console.log(signin);
console.log(login);
console.log(category.slice(0,2));
console.log(product.slice(0,8));
console.log(order);
console.log(inventory);
console.log(cart);
console.log(payment);
console.log(transfer);
console.log(comment);