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
| -------- | ------ |
| red     | <img src="https://via.placeholder.com/15/ff0000/ffffff?text=+" /> |
| pink    | <img src="https://via.placeholder.com/15/ffc0cb/000000?text=+" /> |
| fuchsia | <img src="https://via.placeholder.com/15/ff00ff/ffffff?text=+" /> |
| purple  | <img src="https://via.placeholder.com/15/800080/ffffff?text=+" /> |
| violet  | <img src="https://via.placeholder.com/15/ee82ee/000000?text=+" /> |
| indigo  | <img src="https://via.placeholder.com/15/4b0082/ffffff?text=+" /> |
| blue    | <img src="https://via.placeholder.com/15/0000ff/ffffff?text=+" /> |
| cyan    | <img src="https://via.placeholder.com/15/00ffff/000000?text=+" /> |
| jade    | <img src="https://via.placeholder.com/15/2e8b57/ffffff?text=+" /> |
| green   | <img src="https://via.placeholder.com/15/008000/ffffff?text=+" /> |
| lime    | <img src="https://via.placeholder.com/15/00ff00/000000?text=+" /> |
| yellow  | <img src="https://via.placeholder.com/15/ffff00/000000?text=+" /> |
| pumpkin | <img src="https://via.placeholder.com/15/ff8c00/ffffff?text=+" /> |
| orange  | <img src="https://via.placeholder.com/15/ffa500/ffffff?text=+" /> |
| sand    | <img src="https://via.placeholder.com/15/f4a460/000000?text=+" /> |
| grey    | <img src="https://via.placeholder.com/15/808080/ffffff?text=+" /> |
| zinc    | <img src="https://via.placeholder.com/15/a9a9a9/ffffff?text=+" /> |
| slate   | <img src="https://via.placeholder.com/15/708090/ffffff?text=+" /> |

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
