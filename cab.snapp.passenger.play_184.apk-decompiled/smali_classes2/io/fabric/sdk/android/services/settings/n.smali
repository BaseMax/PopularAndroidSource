.class public final Lio/fabric/sdk/android/services/settings/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final hash:Ljava/lang/String;

.field public final height:I

.field public final iconResourceId:I

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/n;->hash:Ljava/lang/String;

    .line 39
    iput p2, p0, Lio/fabric/sdk/android/services/settings/n;->iconResourceId:I

    .line 40
    iput p3, p0, Lio/fabric/sdk/android/services/settings/n;->width:I

    .line 41
    iput p4, p0, Lio/fabric/sdk/android/services/settings/n;->height:I

    return-void
.end method

.method public static build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/n;
    .locals 5

    const-string v0, "Fabric"

    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->getAppIconResourceId(Landroid/content/Context;)I

    move-result v1

    .line 57
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v2

    const-string v3, "App icon resource ID is "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 63
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 67
    new-instance p0, Lio/fabric/sdk/android/services/settings/n;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p1, v1, v3, v2}, Lio/fabric/sdk/android/services/settings/n;-><init>(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v1, "Failed to load icon"

    invoke-interface {p1, v0, v1, p0}, Lio/fabric/sdk/android/l;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
