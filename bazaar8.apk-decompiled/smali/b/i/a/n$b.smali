.class public Lb/i/a/n$b;
.super Lb/i/a/n$e;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:Landroid/graphics/Bitmap;

.field public f:Landroid/graphics/Bitmap;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/i/a/n$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lb/i/a/n$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lb/i/a/n$b;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lb/i/a/n$b;->g:Z

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lb/i/a/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lb/i/a/n$d;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/i/a/n$e;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Lb/i/a/m;)V
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 5
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 6
    invoke-interface {p1}, Lb/i/a/m;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Lb/i/a/n$e;->b:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Lb/i/a/n$b;->e:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 9
    iget-boolean v0, p0, Lb/i/a/n$b;->g:Z

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lb/i/a/n$b;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 11
    :cond_0
    iget-boolean v0, p0, Lb/i/a/n$e;->d:Z

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lb/i/a/n$e;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Lb/i/a/n$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lb/i/a/n$b;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lb/i/a/n$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lb/i/a/n$d;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/i/a/n$e;->c:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lb/i/a/n$e;->d:Z

    return-object p0
.end method
