.class Lcom/webengage/sdk/android/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/utils/a/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/utils/a/g;Landroid/content/Context;)Lcom/webengage/sdk/android/utils/a/g;
    .locals 4

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "landscape"

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x43400000    # 192.0f

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/webengage/sdk/android/utils/f;->a(Lcom/webengage/sdk/android/utils/a/g;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p2}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "portrait"

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, v2, v2, p2}, Lcom/webengage/sdk/android/utils/f;->a(Lcom/webengage/sdk/android/utils/a/g;FFLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p2}, Lcom/webengage/sdk/android/utils/k;->a(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    new-instance p2, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;

    const-string v1, "OutOfMemoryError"

    invoke-direct {p2, v1}, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/lang/Exception;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/io/InputStream;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g$a;->a()Lcom/webengage/sdk/android/utils/a/g;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/a/g;->o()Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    new-instance v1, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/webengage/sdk/android/actions/exception/ImageLoadException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/utils/a/g$a;->a(Ljava/lang/Exception;)Lcom/webengage/sdk/android/utils/a/g$a;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public a(Lcom/webengage/sdk/android/utils/a/f;Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
