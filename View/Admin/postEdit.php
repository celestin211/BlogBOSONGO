<?php $this->title = "Mon Blog - Administration" ?>

<header class="masthead" style="background-image: url('Content/startbootstrap-clean-blog-gh-pages/img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <div class="site-heading">
                    <h1>Administration</h1>
                    <span class="subheading">Que voulez-vous faire aujourd'hui ? 👷</span>
                    <br>
                    <a type="button" class="btn btn-primary adminBtn" href="admin/index">Ajouter un post</a>
                    <a type="button" class="btn btn-secondary adminBtn" href="admin/postsManagement">Gérer les posts</a>
                    <a type="button" class="btn btn-success adminBtn" href="admin/usersManagement">Gérer les utilisateurs</a>
                    <a type="button" class="btn btn-danger adminBtn" href="admin/commentsManagement">Modérer les commentaires</a>
                </div>
        	</div>
    </div>
    </div>
</header>

<!--  Content  -->
<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-10 mx-auto">
      <h2>Editer un post</h2>

      <form method="post" action="admin/updatePost" id="updatePostForm" novalidate>
        <div class="control-group">
          <div class="form-group controls">
            <label for="title">Titre</label>
            <input name="title" value="<?= $this->sanitize($post->getTitle()) ?>" type="text" class="form-control" placeholder="Titre" id="title" required data-validation-required-message="Veuillez renseigner ce champ.">
            <p class="help-block text-danger"></p>
          </div>
        </div>

        <div class="control-group">
          <div class="form-group controls">
            <label for="chapo">Chapo</label>
            <input name="chapo" value="<?= $this->sanitize($post->getChapo()) ?>" type="text" class="form-control" placeholder="Chapo" id="chapo" required data-validation-required-message="Veuillez renseigner ce champ.">
            <p class="help-block text-danger"></p>
          </div>
        </div>

        <div class="control-group">
          <div class="form-group controls">
            <label for="content">Contenu</label>
            <textarea name="content" rows="10" type="text" class="form-control" placeholder="Content" id="content" required data-validation-required-message="Veuillez renseigner ce champ."><?= $this->sanitize($post->getContent()) ?></textarea>
            <p class="help-block text-danger"></p>
          </div>
        </div>

        <input name="id" type="hidden" value="<?= $this->sanitize($post->getId()) ?>">

        <br>
        <div id="success"></div>
        <div class="form-group">
          <button type="submit" name="submitted" class="btn btn-primary" value="submitted" id="sendMessageButton">Modifier le post</button>
        </div>
      </form>

    </div>
  </div>
</div>
