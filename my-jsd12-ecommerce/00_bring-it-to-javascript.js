/* ตัวอย่าง
    //let productList = ["product_id_1","product_id_2","product_id_3"]

    // const product_A = {
    //     productId: "product_id_1",
    //     productName: "Macbook",
    //     price: 199,
    // }

    // let cart = [
    // {
    //     productId: "product_id_1",
    //     quantity: 10,
    // },
    // {
    //     productID: "product_id_2",
    //     quantity: 5,
    // }
    // ]
*/

// Welcome to Hamster Shop Store
/* มีช่องทางขาย 2 ทาง คือ Ecommerce Web กับ Store Web
    - Ecommerce Web : Shoppee, Lazada สมัครผ่านเว็บนั้นๆ
    - Store Web : ทำการ Signin and Login 
*/

// Login Process
let signin = {
    userName: "HarryHamster",
    passWord: "Harrylnwza007",
    firstName: "Harry",
    lastName: "Hamster",
    grender: "menubar",
    age: 27,
    address: "Bangkok, Thailand",
    email: "customer_00@email.com",
    phone: "080-123-4567",
}

let login = {
    userName: "Harry Hamster",
    passWord: "Harrylnwza007",
}

// Customer Details
const customer = {
    customerId: "Cus0001",
    firstName: "Harry",
    lastName: "Hamster",
    grender: "menubar",
    age: 27,
    address: "Bangkok, Thailand",
    email: "customer_00@email.com",
    phone: "080-123-4567",
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

let categoryList = ["Hamster food", "Hamster Equipment"]

let hamsterFood = ["Ready-made hamster food", "Roasted sunflower seeds", "Dried mealworms", "Taro fish snack", "Fruity hamster"]

let hamsterEquipment = ["Hamster Cage", "Hamster water bottle", "Hamster Wheel"]

const productFood = [
    {
        productId: "PF001",
        categoryId: "CF001_01",
        productName: hamsterFood[0],
        category: categoryList[0],
        price: 199,
        stockQuantity: 50,
        createdAt: "Supplier01"
    },
    {
        productId: "PF002",
        categoryId: "CF001_02",
        productName: hamsterFood[1],
        category: categoryList[0],
        price: 10,
        stockQuantity: 100,
        createdAt: "Supplier02"
    },
        {
        productId: "PF003",
        categoryId: "CF001_03",
        productName: hamsterFood[2],
        category: categoryList[0],
        price: 60,
        stockQuantity: 30,
        createdAt: "Supplier02"
    },
        {
        productId: "PF004",
        categoryId: "CF001_04",
        productName: hamsterFood[3],
        category: categoryList[0],
        price: 30,
        stockQuantity: 30,
        createdAt: "Supplier02"
    },
        {
        productId: "PF005",
        categoryId: "CF001_05",
        productName: hamsterFood[4],
        category: categoryList[0],
        price: 219,
        stockQuantity: 50,
        createdAt: "Supplier01"
    },
]

const productEquipment = [
    {
        productId: "PE001",
        categoryId: "CF002_01",
        productName: hamsterEquipment[0],
        category: categoryList[1],
        price: 1099,
        stockQuantity: 10,
        createdAt: "Supplier03"
    },
        {
        productId: "PE002",
        categoryId: "CF002_02",
        productName: hamsterEquipment[1],
        category: categoryList[1],
        price: 99,
        stockQuantity: 20,
        createdAt: "Supplier03"
    },
        {
        productId: "PE003",
        categoryId: "CF002_03",
        productName: hamsterEquipment[2],
        category: categoryList[1],
        price: 399,
        stockQuantity: 15,
        createdAt: "Supplier03"
    },
]

// Order Transition
let order = {
    orderId : "OD0001",
    customerId : customer.customerId,
    productId : productFood[0,4],
    orderDate : "10/3/2026",
    orderAmount : hamsterFood[0]+" 1 "+hamsterFood[4]+" 1 ",
    totalPrice : 199+219,
    shippingAddress : customer.address,
}

let payment = {
    paymentId : "PY0001",
    orderId : order.orderId,
    paymentMethod : "Bank",
    paymentDate : "10/3/2026",
    amount : order.totalPrice,
    paymentStatus : "Paid",
}

let transfer = {
    transferId : "TF0001",
    paymentId : payment.paymentId,
    transferAmount : payment.amount,
    verifiedStatus : true,
}

    
// console.log(signin);
// console.log(login);
// console.log(customer);
// console.log(categoryList.slice(0,2));
// console.log(hamsterFood.slice(0,5));
// console.log(hamsterEquipment.slice(0,3));
// console.log(order);
// console.log(payment);
// console.log(transfer);