# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
Author.create(
  [
    {
      name: "Pepo",
      email: "pepo@gmail.com",
      password: "pepopepo",
      password_confirmation: "pepopepo",
      instagram_url: "asdf.com",
      twitter_url: "asdf.com",
      github_url: "asdf.com"
    },
    {
      name: "Jacinta Flores",
      email: "jaflores@gmail.com",
      password: "jajajacinta",
      password_confirmation: "jajajacinta",
      instagram_url: "asdf.com",
      twitter_url: "asdf.com",
      github_url: "asdf.com"
    },
    {
      name: "Eustaquio Pérez",
      email: "eueu@gmail.com",
      password: "taquitaqui",
      password_confirmation: "taquitaqui",
      instagram_url: "asdf.com",
      twitter_url: "asdf.com",
      github_url: "asdf.com"
    }
  ]
)

User.create(
  [
    {
      name: "Usuario Sin Name",
      provider: "Google",
      email: "testuser@test.com",
      password: "testtest",
      password_confirmation: "testtest"
    }
  ]
)

Tag.create(
  [
    {
      name: "JavaScript"
    },
    {
      name: "Ruby"
    },
    {
      name: "CSS"
    },
    {
      name: "Rails"
    },
    {
      name: "HTML"
    }
  ]
)

Post.create(
  [
    {
      title: "Como agregar encabezados en HTML",
      content: "Usa las etiquetas h1 h2 h3 h4 h5 h6",
      author_id: Author.all.ids.sample
    },
    {
      title: "Título de prueba",
      content: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      author_id: Author.all.ids.sample
    },
    {
      title: "Bueno, este es otro título de prueba",
      content: "Mira, ¿te cuento algo? No se me ocurre que escribir en esta ocasión.",
      author_id: Author.all.ids.sample
    }
  ]
)

10.times do
  PostTag.create(post_id: Post.all.ids.sample, tag_id: Tag.all.ids.sample)
end