# Forum

![forum](https://raw.githubusercontent.com/PavelShep/PavelShep/main/uploads/forum.png)

Forum is a Ruby on Rails application that serves as an online platform for engaging discussions and knowledge sharing. The website provides users with the opportunity to participate in diverse discussions on various topics, connect with like-minded individuals, and expand their knowledge base.

## Features

- **User Authentication**: The website uses Devise, a powerful authentication solution for Rails, to securely manage user registration and login.

- **Categories and Topics**: Discussions are organized into different categories, making it easy for users to find and contribute to relevant topics.

- **Create posts**: Users can create new topics and posts

- **Admin**: Administrators have access to manage topics and categories.

- **SuperAdmin**: SuperAdmin have access to a dedicated admin panel to manage users(can add admin privileges), topics, and categories.

## Getting Started

### Prerequisites

- Ruby 3.1.2p20

- ImageMagick - for pictures (Version: ImageMagick 7.1.1-12)

- ffmpeg - for videos (ffmpeg version 6.0)

- Bulma 

### Installation

1. Clone the repository:

   ```
   git clone https://github.com/PavelShep/forumF
   cd forumF
   ```

2. Install dependencies:

   ```
   bundle install
   ```

3. Set up the database:

   ```
   rails db:migrate
   rails db:seed
   ```

4. Start the development server:

   ```
   rails server
   ```

5. Open your browser and navigate to `http://localhost:3000` to access the website.

### P.S.

Information for logging(email, passwords) you can find in db/seeds.rb
You may have troubles with pictures and videos
