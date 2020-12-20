{% extends 'layouts/base.html' %}
{% load static %}

{% block title %}ポスト一覧 | {{ SITE_NAME }}{% endblock title %}

{% block content %}
    <div class="row">
        <aside class="col-sm-4">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">{{ user.username }}</h3>
                </div>
                <div class="card-body">
                    <img src="{% static 'img/noimage.png' %}" alt="" class="rounded img-fluid">
                </div>
            </div>
        </aside>
        <div class="col-sm-8">
            {% if posts %}
                {% include 'parts/posts.html' with posts=posts user=user only %}
            {% else %}
                <p>まだ投稿がありません。</p>
            {% endif %}
        </div>
    </div>

{% endblock content %}