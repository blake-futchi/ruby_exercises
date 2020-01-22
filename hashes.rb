#get sisters and brothers from hash
family = {
            uncles: ["bob", "joe" ,"steve"],
            sisters: ["jane", "jill" ,"beth"],
            brothers: ["frank", "rob" ,"david"],
            aunts: ["mary", "sally" ,"susan"]
        }

immediate_family = family.select do |key, value|
        [:sisters,:brothers].include? key
end
puts immediate_family

#get name of person
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]