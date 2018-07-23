<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>Ondřej Žižka</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="My personal web">
    <meta name="author" content="Ondřej Žižka">
    <meta name="generator" content="JBake">

    <#assign rootPath><#if (content.rootpath)??>${content.rootpath}</#if></#assign>

    <link href="${rootPath}css/bootstrap.min.css" rel="stylesheet">
    <link href="${rootPath}css/asciidoctor.css" rel="stylesheet">
    <link href="${rootPath}css/base.css" rel="stylesheet">
    <link href="${rootPath}css/prettify.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="${rootPath}js/html5shiv.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="${rootPath}favicon.ico">
</head>
<body onload="prettyPrint()">
<div id="wrap">
