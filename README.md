# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<a class="navbar-brand" id="logo" href="#">AlphaBlog</a>




<h1>show all articles</h1>
<table>
  <thead>
    <tr>
      <th>title</th>
      <th>description</th>
      <th>action</th>
      <th colspan="3">Actions</th>
    </tr>
  </thead>
  <tbody>
    <% @articles.each do |article| %>
    <tr>
      <td><%= article.title %></td>
      <td><%= article.description %></td>
      <td><%= link_to 'Show', article_path(article) %></td>
      <td><%= link_to 'edit', edit_article_path(article) %></td>
        <td><%= button_to 'Delete', article_path(article), method: :delete, onclick: "return confirm('Are you sure you want to delete this article?');"  %></td>
    </tr>
    <% end %>
  </tbody>
</table>
<p>
<td><%= link_to 'new', new_article_path %></td>
</p>


<%= link_to 'Show', article_path(article) %>
<%= link_to 'edit', edit_article_path(article) %>
<%= link_to 'Delete', article_path(article), method: :delete, onclick: "return confirm('Are you sure you want to delete this article?');"  %>
-------------------------------------
<h1>show article</h1>
<p><strong>Title:</strong><%= @article.title %></p>
<p><strong>Description:</strong><%= @article.description %></p>
<td><%= link_to 'edit', edit_article_path(@article) %></td>



<td><%= button_to 'Delete', article_path(@article), method: :delete, onclick: "return confirm('Are you sure you want to delete this article?');"  %></td>
<td><%= link_to 'Return to articles listing', articles_path %></td>
