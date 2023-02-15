# How to Do 90% of What Plugins Do (With Just Vim)

This is a supplementary repository for my August 3, 2016 talk
[How to Do 90% of What Plugins Do (With Just Vim)](https://www.youtube.com/watch?v=XA2WjJbmmoM).

You may also be interested in my Vim cheat sheets:

Basic ([Digital](https://thingsfittogether.com/product/vim-basics-cheat-sheet-digital-download/) | [Print](https://thingsfittogether.com/product/vim-cheat-sheet-basics-print/)):

![Basic Vim Cheat Sheet](https://thingsfittogether.com/wp-content/uploads/2021/03/Vim-Cheatsheet-2-Final-Draft.png)

Advanced ([Digital](https://thingsfittogether.com/product/vim-cheat-sheet-basics-print/) | [Print](https://thingsfittogether.com/product/vim-cheat-sheet-advanced-print/)):

![Advanced Vim Cheat Sheet](https://thingsfittogether.com/wp-content/uploads/2020/12/vimposterv1movie.png)

# Summary

## Fuzzy File Search

When moving to another buffer with `:b`, hit tab to autocomplete, or
simply hit Enter to go to the first buffer with a unique match to what you
have already typed.

By adding `set path+=**` and `set wildmenu` to the vimrc, we are now
able to hit `Tab` when running a `:find` command to expand partial matches.

Another asterisk (`*`) can be placed in the query to return fuzzy/partial matches.

## Tag jumping

First, download and run `ctags` in your project directory like this: `ctags -R .`

Make sure your Vim working directory is in the same directory as the `tags` file
that gets generated.

Now, you are able to use `^]` to jump to a tag under the cursor, `g^]` to get a
listing of all matching tags, and `^t` to jump *back* up the tag stack.

## Autocomplete

Vim has plenty of ways to do autocomplete. The best is `^n` which works out of the box
according to the `complete` option. Use `^p` to go back in the suggestion list, 
`^y` to accept the current completion choice, and `^e` to cancel out of the autocompletion
dialog to return to your text without making a selection.

There are also a number of other autocomplete features prefixed by `^x`:

- `^x^n` to search within the file
- `^x^f` to complete filenames (works with `path+=**`!)
- `^x^]` to complete *only* tags

And more! `:help ins-completion` for a full listing.

## File Browsing

Vim ships with a builtin file browser called NetRW. To use it, just run `:E`.

## Snippets

Here's an example of a minimal snippet command you can put in your vimrc:

```vim
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>
```

Assuming that your home vim directory contains a text file called `.skeleton.html`,
which contains (for example) an empty HTML document, this mapping will insert
a copy of the text file in the current file when you type `,html` in normal mode.

## Build Integration

See the bottom of `no_plugins.vim` for an explanation of how to integrate Vim
with a simple Ruby RSpec build process (**warning**: this has not been updated
since 2016, so it probably does not work anymore).
