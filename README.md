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

intersting for me
you can assing article to user using shofle operator
when we have artcile =('hh','eee')
and user=("mohamed","adem")
user.articles << article 


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

-------------------------------------------------

<div id="page-content" class="card text-center">
  <div class="container"  >
  <h2 class="card-header mt-4">
  Show article
  </h2>

      <div class="row justify-content-md-center " >
        <div class="col-8 mt-4" id="hmida">
          <div class="card-header font-italic">
          <%= @article.title %>
          </div>
      <div class="card-body shadow p-3 mb-5 bg-white rounded">

        <p class="card-text"><%= @article.description %></p>

        <a href="#" ><%= link_to 'edit', edit_article_path(@article),class: "btn btn-outline-info" %></a>
        <a href="#" ><%= link_to 'Delete', article_path(@article), method: :delete, onclick: "return confirm('Are you sure you want to delete this article?');",class: "btn btn-outline-danger"  %>
 </a>
      </div>
  <div class="card-footer text-muted">
    created <%= time_ago_in_words(@article.created_at)%> ago ,updated <%= time_ago_in_words(@article.updated_at) %> ago
  </div>
</div>
</div>

</div>
</div>
