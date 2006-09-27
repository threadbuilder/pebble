<div class="contentItem">


  <div class="contentItemLinks">
    <a href="./help/managingBlogs.html" target="_blank">Help</a>
  </div>

  <h1>Blogs</h1>
  <h2>&nbsp;</h2>

  <div class="contentItemBody">
    <table width="99%" cellspacing="0" cellpadding="4">
      <thead>
        <th>ID</th>
        <th>Name</th>
        <th>&nbsp;</th>
      </thead>
      <tbody>
      <c:forEach var="aBlog" items="${blogs}" varStatus="status">
        <c:choose>
          <c:when test="${status.count % 2 == 0}">
            <tr class="even">
          </c:when>
          <c:otherwise>
              <tr class="odd">
          </c:otherwise>
        </c:choose>
        <td>${aBlog.id}</td>
        <td><a href="${aBlog.url}">${aBlog.name}</a></td>
        <td align="right">
          <a href="${aBlog.url}viewBlogProperties.secureaction">Properties</a> |
          <a href="${aBlog.url}viewPlugins.secureaction">Plugins</a> |
          <a href="${aBlog.url}utilities.secureaction">Utilities</a>
        </td>
      </tr>
      </c:forEach>
      </tbody>
    </table>

    <c:choose>
    <c:when test="${blogManager.multiBlog}">
    <p>
      To add a new blog, enter the name that will be used to identify this blog underneath this web application (must contain a-zA-Z_0-9 characters only).
    </p>

    <p>
    <form name="addBlog" action="addBlog.secureaction" method="POST">
    ${blog.url}
    <input name="id" type="text" value="" />
    <input type="submit" value="Add Blog" />
    </form>
    </p>
    </c:when>
    <c:otherwise>
    <p>
      Pebble is currently running in single-blog mode. To add more blogs to this Pebble instance, restart Pebble in multi-blog mode. You
      can do this by setting the <code>multiBlog</code> property to <code>true</code> in the <code>/WEB-INF/applicationContext-pebble.xml</code> file and
      restarting your web/application server.
    </p>
    </c:otherwise>
    </c:choose>

  </div>

</div>