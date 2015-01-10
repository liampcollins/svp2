# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p1 = Programme.create({name: "Social Innovation Camp", description: "Social Innovation Camp designs innovation programmes that use technology for social good - working on problems like healthcare and ageing, education and employment, and the sustainability of the environment and local communities.", prog_type: "competition", location: "London, United Kingdom", continent: "Europe", country: "United Kingdom", city: "London", duration: "1 week", funding_offered: 10000, website_url: "http://www.sicamp.org", founded: 2008, prog_image: "http://www.screenmedia.co.uk/media/81863/social-innovation-camp-1.jpg"})

p2 = Programme.create({name: "Starting Bloc Fellowship", description: "StartingBloc hosts transformative 5-day events. Fellows come together to develop skills, build alliances, and gain access to the resources they need to create impact.", prog_type: "competition", location: "New York, United States", continent: "North America", country: "United States", city: "New York", duration: "5 days", funding_offered: 10000, website_url: "http://www.startingbloc.org", founded: 2005, prog_image: "http://socialcapitalmarkets.net/wp-content/uploads/2013/03/BOS11.jpg"})


p3 = Programme.create({name: "Bethnal Green Ventures", description: "Bethnal Green Ventures is an accelerator programme for people who want to change the world using technology. We invest in and support great teams with new ideas to help build solutions to social and environmental problems through an intensive three-month programme.", prog_type: "accelerator", location: "London, United Kingdom", continent: "Europe", country: "United Kingdom", city: "London",  duration: "3 months", funding_offered: 15000, website_url: "http://www.bethnalgreenventures.com", founded: 2010, prog_image: "http://www.nesta.org.uk/sites/default/files/styles/large/public/bgv-team.jpg?itok=3dDk5Rt3"})

p4 = Programme.create({name: "UnLtd India Bootcamp", description: "We work with early-stage social entrepreneurs to help them develop as leaders, accelerate their impact and prepare their organisations for scaling and further investment", prog_type: "accelerator", location: "Mumbai, India", continent: "Asia", country: "India", city: "Mumbai", duration: "3 months", funding_offered: 15000, website_url: "http://www.unltdindia.org/", founded: 2007, prog_image: "http://www.unltdindia.org/sites/default/files/imagecache/investee_stories/listings/photographs/unltd_india_investee_Pooja_Taparia_Arpan_0.jpg"})


p5 = Programme.create({name: "Social Innovation Camp1", description: "Social Innovation Camp designs innovation programmes that use technology for social good - working on problems like healthcare and ageing, education and employment, and the sustainability of the environment and local communities.", prog_type: "competition", location: "London, United Kingdom", continent: "Europe", country: "United Kingdom", city: "London", duration: "1 week", funding_offered: 10000, website_url: "http://www.sicamp.org", founded: 2008, prog_image: "http://www.screenmedia.co.uk/media/81863/social-innovation-camp-1.jpg"})

p6 = Programme.create({name: "Starting Bloc Fellowship1", description: "StartingBloc hosts transformative 5-day events. Fellows come together to develop skills, build alliances, and gain access to the resources they need to create impact.", prog_type: "competition", location: "New York, United States", continent: "North America", country: "United States", city: "New York", duration: "5 days", funding_offered: 10000, website_url: "http://www.startingbloc.org", founded: 2005, prog_image: "http://socialcapitalmarkets.net/wp-content/uploads/2013/03/BOS11.jpg"})


p7 = Programme.create({name: "Bethnal Green Ventures1", description: "Bethnal Green Ventures is an accelerator programme for people who want to change the world using technology. We invest in and support great teams with new ideas to help build solutions to social and environmental problems through an intensive three-month programme.", prog_type: "accelerator", location: "London, United Kingdom", continent: "Europe", country: "United Kingdom", city: "London", duration: "3 months", funding_offered: 15000, website_url: "http://www.bethnalgreenventures.com", founded: 2010, prog_image: "http://www.nesta.org.uk/sites/default/files/styles/large/public/bgv-team.jpg?itok=3dDk5Rt3"})

p8 = Programme.create({name: "UnLtd India Bootcamp1", description: "We work with early-stage social entrepreneurs to help them develop as leaders, accelerate their impact and prepare their organisations for scaling and further investment", prog_type: "accelerator", location: "Mumbai, India", continent: "Asia", country: "India", city: "Mumbai", duration: "3 months", funding_offered: 15000, website_url: "http://www.unltdindia.org/", founded: 2007, prog_image: "http://www.unltdindia.org/sites/default/files/imagecache/investee_stories/listings/photographs/unltd_india_investee_Pooja_Taparia_Arpan_0.jpg"})



v1 = Venture.create({name: "Written Medicine", sector: "Healthcare", location: "London, United Kingdom", description: "Murtada Alsaif, Ghalib Khan and Tucker McGaw are building Written Medicine, a simple online system to help pharmacists automatically provide pharmacy labels in a variety of languages", founded: 2013, founder: "Murtada Alsaif, Ghalib Khan and Tucker McGaw", org_type: "Ltd. company", num_employees: 4})

v2 = Venture.create({name: "Wevolver", sector: "Education", location: "London, United Kingdom", description: "Bram Geenen and Ries Hulskes are growing Wevolver, a platform for makers and educators to share projects and collaborate on hardware, including robotics and electronics.", founded: 2013, founder: "Bram Geenen and Ries Hulskes", org_type: "Ltd. company", num_employees: 4})


v3 = Venture.create({name: "Kutoa", sector: "Renewable Energy", location: "London, United Kingdom", description: "Kar Xeng Chan, Karim Gharaibeh, Bruno Howard, Hendrik Löbberding, Ahmad Nawab and Sangeet Shah have invented Kutoa – a low cost, flat-pack medium sized wind turbine that is easy to deploy in places that don’t yet have electricity.", founded: 2013, founder: "Bram Geenen and Ries Hulskes", org_type: "Ltd. company", num_employees: 4})


v4 = Venture.create({name: "HealthExample", sector: "Healthcare", location: "London, United Kingdom", description: "Using performing arts as a method of building skills and values in the age group of 6 years to 16 years children from low-income communities.  Rangmanch addresses the lack of opportunities and spaces for children from low-income communities to explore their talents and aims to be platform for them to grow.", founded: 2013, founder: "Vanita Kariappa", org_type: "Non-profit", num_employees: 4})



v5 = Venture.create({name: "Threads of freedom", sector: "Education", location: "London, United Kingdom", description: "Pritham employs women who have been rescued from sex slavery, to manufacture clothes for apparel retailers and designers. Functioning as a multi-player and connector organization, Threads of Freedom partners with the Government of Karnataka, NGOs and clothes manufacturers to provide vocational training, shelter and livelihood opportunities to trafficked women.", founded: 2013, founder: "Pritham Raja", org_type: "Non-profit", num_employees: 4})



p3.ventures<< [v1, v2, v3]
p4.ventures<< [v4, v5]


c1 = CaseStudy.create({name: "Adebayo Adegbembo, founder of Genii Games and Asa", location: "Nigeria", cs_image: "http://www.geniigames.com/wp-content/uploads/2014/02/asa1-430x280.jpg", prog_type: "incubator", description: "In 2012 Adebayo (Bayo) Adegbembo entered Co–Creation Hub (CcHUB) Nigeria’s ‘Tech in Education’ hackathon and came runner–up, receiving $2,000 for Asa, a series of apps to teach children about their cultural heritage in Africa. 
  “It’s about cultural identity amongst kids,” explains Bayo. “We know they are fast losing their culture, they know nothing about their roots, and we want to bring them back in connection with that. We want to develop tools so kids can learn and develop these cultural skills.”
  The profile and money from the hackathon was useful, but the introduction into the CcHUB community has proved to be the real prize. After the hackathon Bayo started renting a desk in the CcHUB co–working space, paying membership on a quarterly basis and gaining access to his own work space, office facilities, mentorship and business support.
  The venture developed quickly once Bayo joined the hub. “We entered CcHUB in February 2012 and the app came out in July 2012,” said Bayo. “In the 24 months since then, we’ve seen user growth from around 3,000 at launch to over 10,000 registered users with over $30,000 in direct revenue.”
  According to Bayo, the CcHUB community played a really important role in the early–stage development of the business.“CcHub is like a family. It’s like a one stop shop... everything we needed to develop Asa is here! Illustration, content, development, finance.. it’s a great community” he said. 
  Bayo now has a place on the CcHUB incubator programme, receiving space and incubation services and an investment into his venture. He’s working with two employees and he’s aiming towards profitability by the end of 2014, so he can move out of the hub and expand. 
  Before entering the hackathon competition Bayo had been struggling for three years to make 
  it as an entrepreneur. “If it weren’t for CcHUB I would not be where I am today,” he said. “My story is I tried to make things on my own, and when I stumbled upon CcHUB it just had the whole package – HR, finance, networks, mentors.. there’s a whole lot of value in that. I’m proud to be part of it.”"})


