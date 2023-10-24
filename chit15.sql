1.use Institute

2.db.createCollection("Students")

3.db.Students.insertMany([
  { RollNo: 1, "Student Name": "Alice", Age: 18, Branch: "Computer", Address: { City: "Pune", State: "Maharashtra" }, Hobbies: ["Reading", "Painting"] },
  { RollNo: 2, "Student Name": "Bob", Age: 20, Branch: "Electronics", Address: { City: "Mumbai", State: "Maharashtra" }, Hobbies: ["Music", "Sports"] },
])

4.db.Students.find()

5.db.Students.find({ Age: { $gt: 15 } })

6.db.Students.find().sort({ "Student Name": 1 })

7.db.Students.updateOne({ RollNo: 3 }, { $set: { Branch: "Computer" } })

8.db.Students.deleteOne({ RollNo: 1 })

9.db.Students.find({ "Student Name": /^A/ })

10.db.Students.countDocuments()

11.db.Students.find().limit(5)

12.db.Students.find().skip(3)

13.db.Students.find({ "Address.City": "Pune" }, { "Student Name": 1, _id: 0 })

14.db.Students.find({}, { "Student Name": 1, _id: 0 })
15.db.Students.drop()
