# Picocss::Gem

`picocss-gem` is a **Ruby gem** that integrates [PicoCSS](https://picocss.com) into Ruby applications.
It works with **Rails**, **Bridgetown**, and **Sinatra**, providing:

* Automatic inclusion of PicoCSS assets
* Rails generators (base + theme + login template)
* Multi-framework support for Ruby apps

> Documentation also available in Portuguese: [Português](./README.pt-BR.md)

---

## 🌟 Features

* ✅ Rails, Sinatra, and Bridgetown support
* ✅ PicoCSS included and ready for production
* ✅ Easy setup and integration
* ✅ Generators for Rails (`bin/rails generate picocss:install`)
* ✅ Theme generators (`bin/rails generate picocss:install_<theme>`)
* ✅ Login template generator (`bin/rails generate picocss:template_login`)

---

## 💾 Installation

Add to your **Gemfile**:

```ruby
gem "picocss-gem", "~> 0.1.0"
```

Then run:

```bash
bundle install
```

Or install directly:

```bash
gem install picocss-gem
```

---

## 🛠️ Usage

### Rails

#### Default PicoCSS

1. Add PicoCSS to your layout:

```erb
<%= stylesheet_link_tag "pico.min", media: "all" %>
```

2. Copy the CSS to your project:

```bash
bin/rails generate picocss:install
```

3. Restart your server:

```bash
rails server
```

---

#### 🎨 Install a Theme

```bash
bin/rails generate picocss:install_<color>
```

| Theme   | Color |
| ------- | ----- |
| red     | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23ff0000'/></svg>" /> |
| pink    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23ffc0cb'/></svg>" /> |
| fuchsia | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23ff00ff'/></svg>" /> |
| purple  | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23800080'/></svg>" /> |
| violet  | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23ee82ee'/></svg>" /> |
| indigo  | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%234b0082'/></svg>" /> |
| blue    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%230000ff'/></svg>" /> |
| cyan    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%2300ffff'/></svg>" /> |
| jade    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%232e8b57'/></svg>" /> |
| green   | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23008000'/></svg>" /> |
| lime    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%2300ff00'/></svg>" /> |
| yellow  | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23ffff00'/></svg>" /> |
| pumpkin | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23ff8c00'/></svg>" /> |
| orange  | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23ffa500'/></svg>" /> |
| sand    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23f4a460'/></svg>" /> |
| grey    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23808080'/></svg>" /> |
| zinc    | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23a9a9a9'/></svg>" /> |
| slate   | <img src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='15' height='15'><rect width='15' height='15' rx='3' ry='3' fill='%23708090'/></svg>" /> |

Example:

```bash
bin/rails generate picocss:install_blue
```

---

#### 👤 Login Template Generator

```bash
bin/rails generate picocss:template_login
```

This will copy the login template to:

```
app/views/sessions/new.html.erb
```

Template highlights:

* Centered form with vertical alignment
* Fields: Email, Password, "Remember me" checkbox
* Dark background with contrasting buttons
* Fully responsive container

```erb
<main class="container" style="background-color:#111; height:100vh; display:flex; justify-content:center; align-items:center;">
  <form method="post" action="/login" style="width:300px;">
    <h1 style="color:white;">Login</h1>
    <label>Email</label>
    <input type="email" required>
    <label>Password</label>
    <input type="password" required>
    <div>
      <input type="checkbox">
      <label>Remember me</label>
    </div>
    <button type="submit">Login</button>
  </form>
</main>
```

---

### Sinatra

```ruby
require "sinatra"
require "picocss"

register Picocss::Sinatra
```

```html
<link rel="stylesheet" href="/assets/stylesheets/pico.min.css" />
```

```bash
ruby app.rb
```

---

### Bridgetown

```ruby
gem "picocss-gem", "~> 0.1.0"
```

CSS Copy automatically to:

```
output/assets/css/pico.min.css
```

Include in layout:

```html
<link rel="stylesheet" href="/assets/css/pico.min.css" />
```

Build and serve:

```bash
bridgetown build
bridgetown serve
```

---

## ⚡ Generators Summary

| Command                                      | Description                                    |
| -------------------------------------------- | ---------------------------------------------- |
| `bin/rails generate picocss:install`         | Copy `pico.min.css`                          |
| `bin/rails generate picocss:install_<theme>` | Copy a themed CSS (e.g. `pico.blue.min.css`) |
| `bin/rails generate picocss:template_login`  | Copy login template                          |

---

## 🧪 Development

```bash
bin/setup
rake spec
bin/console
bundle exec rake install
bundle exec rake release
```

---

## 📝 License

MIT License. See [LICENSE](./LICENSE.txt)
