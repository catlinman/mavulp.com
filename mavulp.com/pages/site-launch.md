{
  title: "Site Launch"
  description: "We finally have an official website for Mavulp and its projects!"
  author: "catlinman"
  website: "https://twitter.com/catplease"
}

# So, why the website? #

I've been working on the site over the last few days after it has been sitting on my todo list for about a month now. The main idea was to simply put have a place where projects and other development related and collaborative work could be easily showcased and maintained without the hassle of having a huge server setup or spinning up any extra resources. The site itself is managed entirely from the server side of things meaning there is no real outside access. Members of Mavulp have access to the remote backend so an open connection is not needed to do any work or maintenance on the site.

The way the site works is that there are a set of pages that are written by myself that give the base layout. Using input files in form of simple Markdown (.md) files, members can add new content with ease which is then filled into the base layouts. Currently the system still requires editing the base site script but I'm planning on making a workaround to keep things even easier to maintain. At the same time the index page could still use some extra helpers to make adding members and pages easier but I'll get on that when I have time. Right now I am just happy that the site is up and looks as I wanted it to.

If you want to look into the possibilities that can be thrown into posts and content here then I suggest checking out the formatting [guide page]($root/pages/formatting-guide) for more information. You can also find the source code for the entire page in the [Mavulp.com GitHub Repository](https://github.com/catlinman/mavulp.com).

If you are wondering: the site depends on [Sitegen](https://github.com/leafo/sitegen/) which is required to build the pages. Additionally [Less.js](http://lesscss.org/), [CoffeeScript](http://coffeescript.org/) and [Pygments](http://pygments.org/) are used in development. Pretty neat!

*Now, what's left to do?*

- Mobile layout improvements
- Better handling of member and link entries
- Having multiple content authors at once
- Maybe some extra styling for the landing page

The site is done in my opinion in terms that it is ready to be used. That's what really matters at this point. I'll probably have those few points done by the end of next week if everything goes alright anyway so there's barely a reason for me to list them now!
