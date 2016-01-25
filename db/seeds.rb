# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# 100.times do
#   Company.create(name: Faker::Lorem.sentence(4),
#                 description: Faker::Lorem.sentence(12, true, 10)
#                )
# end
require 'csv'
csv_file = File.read('db/family_top.csv')
csv = CSV.parse(csv_file, :headers => true)
csv.each do |row|
  Rails.logger.info "row : " + row.inspect + " ---"
  Rails.logger.info "row 0: " + row[0].inspect + " ---"
  c = Company.create(
    family_business: row[0],
    name: row[1],
    alias: row[2],
    street: row[3],
    postal_code: row[4],
    city: row[5],
    phone: row[6],
    fax: row[7],
    mobile: row[8],
    email: row[9],
    website: row[10],
    family_name: row[24],
    branch: row[25],
    creation_date: row[24]
  )
  ct = Contact.create(
    company: c,
    civility: row[11],
    title: row[12],
    firstname: row[13],
    name: row[14],
    position: row[15],
    phone: row[16],
    fax: row[17],
    mobile: row[18],
    email: row[19]
  )

  r = Ranking.create(
    company: c,
    year: 2013,
    turnover: row[20],
    employees: row[22]
  )

  if row[21] && row[23]
    r = Ranking.create(
      company: c,
      year: 2014,
      turnover: row[21],
      employees: row[23]
    )
  end
  # u = Usage.create(amount: row[0])
  # u.create_price(amount: row[1])
end
