# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

about = %q(Hi and welcome to my portfolio!

I hope you enjoyed checking out some of the projects I’ve worked on. I’m a game designer and devleoper from Toronto, Canada and have been spending my career learning all about what it takes to create fun content.

As a game designer, I find the most fun in brainstorming and designing concepts with talented people from all areas of development. Being able to communicate those ideas and watching a design come to life is one aspect I find very rewarding.

As a game developer I work in Unity3D. I’m a self taught programmer who loves working collaboratively with other developers and artists. With each new project, I’m excited for all the opportunities to learn from the challenges they present and most importantly, from those who can teach me new things.

During my free time I often find myself spending large chunks of it working on personal projects either with friends or as a freelancer collaborator with others from around the world.

If you’re looking for someone to join your team, please take a resume and contact me.

Networking is a huge part of this industry, so if you’re looking for someone to talk to about games, feel free to message me as well.

Thanks again for stopping by!

Matthew Ostil)
youtube = 'https://www.youtube.com/channel/UCkwkyFXsVxNjXCMzb-4zycA'
linkedin = 'https://www.linkedin.com/in/matthewostil/'
email = 'matthewostil@gmail.com'
twitter = 'https://twitter.com/matthewostil'

if !Setting.any?
  Setting.create(about: about, youtube: youtube, linkedin: linkedin, email: email, twitter: twitter)
end
