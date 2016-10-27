{
	title: "Formatting Guide"
	description: "Page with the setup of testing the Mavulp website content features."

	members: {
		{id: "catlinman", name: "Catlinman", website: "https://twitter.catlinman.com"}
	}
}

# Table of contents #

$index

# Summary #

This page gives information on a test project. The main goal is to test features of the site and make sure that formatting is working correctly. We will update this as new features are added.

# Page formatting #

Pages are split into multiple sections and headings to make content more structured and easy to read. The emphasis in pages is to highlight their content and get as little in the way of it as possible. Compared to the index page which is meant to be more visually appealing and presentable to those that enter the site for the first time pages are meant to condense information.

## Formatting guide ##

You can use any formatting that you would usually use in markdown files. The following should give a brief overview.

- *italics*
- **bold**
- [inline links]()

Inline images are also supported as the following formatting shows.

![Catlinman](../img/profiles/mavulp.jpg)

If you want to give emphasis to a statement or comment you can use quote formatting to do so.

> Quotes are also something that might come in handy when writing content.
> > This quote is nested. Pretty neat.

## Code formatting ##

Code formatting is also supported. There are two ways to do it.

First option (best used inline):

`$ :(){ :|:& };:`

Second option (for multiple lines):

	body, a, h1, h2, h3, h4, h5, h6 {
  		font-family: 'Raleway', sans-serif;
  		color: @text;
	}

We encourage use of the second possibility for multiple lines of code. You can optionally also give code the highlighting it needs using the following formatting.

```lua
-- Rounds a given number to a designated decimal point.
function math.round(num, idp)
	local mult = 10^(idp or 0)
	return math.floor(num * mult + 0.5) / mult
end
```
