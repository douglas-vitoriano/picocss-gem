# Picocss::Gem

`picocss-gem` é uma **gem Ruby** que integra [PicoCSS](https://picocss.com) em aplicações Ruby.
Funciona com **Rails**, **Bridgetown** e **Sinatra**, oferecendo:

* Inclusão automática dos assets do PicoCSS
* Geradores para Rails (base, temas e login template)
* Suporte a múltiplos frameworks Ruby

> Documentação em inglês: [English](./README.md)

---

## 🌟 Recursos

* ✅ Suporte a Rails, Sinatra e Bridgetown
* ✅ PicoCSS incluído e pronto para produção
* ✅ Configuração rápida e simples
* ✅ Gerador principal (`bin/rails generate picocss:install`)
* ✅ Geradores de tema (`bin/rails generate picocss:install_<tema>`)
* ✅ Gerador de template de login (`bin/rails generate picocss:template_login`)

---

## 💾 Instalação

Adicione ao **Gemfile**:

```ruby
gem "picocss-gem", "~> 0.1.0"
```

Depois execute:

```bash
bundle install
```

Ou instale diretamente:

```bash
gem install picocss-gem
```

---

## 🛠️ Uso

### Rails

#### Tema padrão

```erb
<%= stylesheet_link_tag "pico.min", media: "all" %>
```

```bash
bin/rails generate picocss:install
rails server
```

---

#### 🎨 Instalar tema

```bash
bin/rails generate picocss:install_<cor>
```

| Tema    | Cor                                                                                                         |
| ------- | ----------------------------------------------------------------------------------------------------------- |
| red     | <span style="background-color:red; color:white; padding:2px 6px; border-radius:4px;">__</span>             |
| pink    | <span style="background-color:pink; color:black; padding:2px 6px; border-radius:4px;">__</span>           |
| fuchsia | <span style="background-color:fuchsia; color:white; padding:2px 6px; border-radius:4px;">__</span>     |
| purple  | <span style="background-color:purple; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| violet  | <span style="background-color:violet; color:black; padding:2px 6px; border-radius:4px;">__</span>       |
| indigo  | <span style="background-color:indigo; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| blue    | <span style="background-color:blue; color:white; padding:2px 6px; border-radius:4px;">__</span>           |
| cyan    | <span style="background-color:cyan; color:black; padding:2px 6px; border-radius:4px;">__</span>           |
| jade    | <span style="background-color:mediumseagreen; color:white; padding:2px 6px; border-radius:4px;">__</span> |
| green   | <span style="background-color:green; color:white; padding:2px 6px; border-radius:4px;">__</span>         |
| lime    | <span style="background-color:lime; color:black; padding:2px 6px; border-radius:4px;">__</span>           |
| yellow  | <span style="background-color:yellow; color:black; padding:2px 6px; border-radius:4px;">__</span>       |
| pumpkin | <span style="background-color:darkorange; color:white; padding:2px 6px; border-radius:4px;">__</span>  |
| orange  | <span style="background-color:orange; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| sand    | <span style="background-color:sandybrown; color:black; padding:2px 6px; border-radius:4px;">__</span>     |
| grey    | <span style="background-color:grey; color:white; padding:2px 6px; border-radius:4px;">__</span>           |
| zinc    | <span style="background-color:darkgray; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| slate   | <span style="background-color:slategray; color:white; padding:2px 6px; border-radius:4px;">__</span>     |

Exemplo:

```bash
bin/rails generate picocss:install_blue
```

---

#### 👤 Gerador de Template de Login

```bash
bin/rails generate picocss:template_login
```

Copia o template de login para:

```
app/views/sessions/new.html.erb
```

Template:

* Formulário centralizado verticalmente
* Campos: Email, Senha, Checkbox "Lembrar-me"
* Background escuro e botão contrastante
* Container responsivo

```erb
<main class="container" style="background-color:#111; height:100vh; display:flex; justify-content:center; align-items:center;">
  <form method="post" action="/login" style="width:300px;">
    <h1 style="color:white;">Login</h1>
    <label>Email</label>
    <input type="email" required>
    <label>Senha</label>
    <input type="password" required>
    <div>
      <input type="checkbox">
      <label>Lembrar-me</label>
    </div>
    <button type="submit">Entrar</button>
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

CSS será copiado para:

```
output/assets/css/pico.min.css
```

Include no layout:

```html
<link rel="stylesheet" href="/assets/css/pico.min.css" />
```

Build e serve:

```bash
bridgetown build
bridgetown serve
```

---

## ⚡ Geradores disponíveis

| Comando                                     | Descrição                                        |
| ------------------------------------------- | ------------------------------------------------ |
| `bin/rails generate picocss:install`        | Copia `pico.min.css`                             |
| `bin/rails generate picocss:install_<tema>` | Copia o CSS de um tema (ex: `pico.blue.min.css`) |
| `bin/rails generate picocss:template_login` | Copia template de login                          |

---

## 🧪 Desenvolvimento

```bash
bin/setup
rake spec
bin/console
bundle exec rake install
bundle exec rake release
```

---

## 📝 Licença

MIT License. Veja [LICENSE](./LICENSE.pt-BR.txt)