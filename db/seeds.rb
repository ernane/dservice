Thing.delete_all
5.times { |i| Thing.create({name: "Thing #{i}"})}
