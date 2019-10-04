.class Lcom/webengage/sdk/android/actions/render/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/actions/render/o$a;,
        Lcom/webengage/sdk/android/actions/render/o$c;,
        Lcom/webengage/sdk/android/actions/render/o$b;
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/webengage/sdk/android/actions/render/g;

.field f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/webengage/sdk/android/actions/render/g;Landroid/app/Activity;Lorg/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p6, "<!DOCTYPE html>\n<html>\n  <head>\n    <meta charset=\'UTF-8\'>\n    <title>Full Page Modal In-App</title>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n  </head>\n  <body style = \"background-color: transparent\">\n      <script type=\'text/javascript\'>\n        \n        var webengage = {};\n\n        webengage.notification = {\n\t       \n         \'x\' : 1\n        \n        };\n\n        var instance = {\n\n          layoutId : WebEngage.getLayoutId(),\n\n previewJson : true ,          baseURL: \""

    iput-object p6, p0, Lcom/webengage/sdk/android/actions/render/o;->g:Ljava/lang/String;

    const-string p6, "\",\n\n\t        data : JSON.parse(WebEngage.getData()),\n\n\t        click : function (actionId,actionLink,isPrime) {\n\t           WebEngage.onClick(actionId,actionLink,isPrime);\n\t        },\n\n          close : function (){\n             WebEngage.onClose();\n          },\n\n          open : function(){\n             WebEngage.onOpen();\n          },\n\n          error : function(stackTrace){\n             WebEngage.onError(stackTrace);\n          }\n\n        };\n      </script>\n      <script type=\'text/javascript\' src=\'"

    iput-object p6, p0, Lcom/webengage/sdk/android/actions/render/o;->h:Ljava/lang/String;

    const-string p6, "js/notification-prepare.js\'></script>\n      <script type=\'text/javascript\'>\n       var notificationInstance = webengage.notification.prepare(instance);\n       notificationInstance.show();\n      </script>\n  </body>\n</html>\n"

    iput-object p6, p0, Lcom/webengage/sdk/android/actions/render/o;->i:Ljava/lang/String;

    const/4 p6, 0x0

    iput-object p6, p0, Lcom/webengage/sdk/android/actions/render/o;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/o;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/o;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/webengage/sdk/android/actions/render/o;->e:Lcom/webengage/sdk/android/actions/render/g;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/o;->f:Ljava/lang/ref/WeakReference;

    new-instance p2, Landroid/webkit/WebView;

    invoke-direct {p2, p5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    invoke-virtual {p3, p2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/webengage/sdk/android/actions/render/o;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/webengage/sdk/android/actions/render/o;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/o;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/o;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/webkit/WebResourceResponse;
    .locals 3

    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/favicon.ico"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance p0, Landroid/webkit/WebResourceResponse;

    const-string p1, "image/jpeg"

    invoke-direct {p0, p1, v1, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/webengage/sdk/android/utils/a/f$a;

    sget-object v2, Lcom/webengage/sdk/android/utils/a/e;->a:Lcom/webengage/sdk/android/utils/a/e;

    invoke-direct {v0, p0, v2, p1}, Lcom/webengage/sdk/android/utils/a/f$a;-><init>(Ljava/lang/String;Lcom/webengage/sdk/android/utils/a/e;Landroid/content/Context;)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Lcom/webengage/sdk/android/utils/a/f$a;->b(I)Lcom/webengage/sdk/android/utils/a/f$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/f$a;->a()Lcom/webengage/sdk/android/utils/a/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/f;->i()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/g;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/g;->b()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/g;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "content-type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/g;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_2
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/g;->e()Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-direct {p1, v1, v0, p0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/webengage/sdk/android/utils/a/g;->n()V

    return-object v1
.end method


# virtual methods
.method a()Landroid/webkit/WebView;
    .locals 10

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/o;->e:Lcom/webengage/sdk/android/actions/render/g;

    const-string v3, "WebEngage"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/webengage/sdk/android/actions/render/o$b;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/o;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/webengage/sdk/android/actions/render/o$b;-><init>(Lcom/webengage/sdk/android/actions/render/o;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/webengage/sdk/android/actions/render/o$c;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/o;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/webengage/sdk/android/actions/render/o$c;-><init>(Lcom/webengage/sdk/android/actions/render/o;Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/webengage/sdk/android/actions/render/o$a;

    invoke-direct {v1, p0, v3}, Lcom/webengage/sdk/android/actions/render/o$a;-><init>(Lcom/webengage/sdk/android/actions/render/o;Lcom/webengage/sdk/android/actions/render/o$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/webengage/sdk/android/actions/render/o;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/webengage/sdk/android/actions/render/o;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/webengage/sdk/android/actions/render/o;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/webengage/sdk/android/actions/render/o;->d:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_2
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/o;->a:Landroid/webkit/WebView;

    return-object v0
.end method
