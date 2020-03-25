# private-linter

A simple linter that checks for basic empty line at the end of file.

## Built With

- Ruby
- Rubocop
- Gem
- VS Code

## Pre-requisites

Ruby and Rubocop must be installed in your computer.

## Installing Linter

When you have installed Ruby on your computer, clone the project.
Run linter by typing: `ruby bin/main.rb`

Enjoy!

## Run tests

After cloning the project, run `rspec ./spec/emptylineendoffile_spec.rb`

## Error List And Example:

Bad Code

```
  def add_to_report(file_name, line, name, info)
    @@report << [file_name, line, name, info]
  end # End of file
```

Good Code

```
  def add_to_report(file_name, line, name, info)
    @@report << [file_name, line, name, info]
  end
# End of file
```

## Authors

👤 **Jabiro Christian**

- Github: [@jabichris](https://github.com/jabichis)
- Twitter: [@JabiroChristian](https://twitter.com/JabiroChristian)
- Linkedin: [Jabiro Christian](https://www.linkedin.com/in/jabiro-christian-b01054115/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the issues page.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

Microverse

## 📝 License

This project is MIT licensed.
