.class public Lf/a/a/e/b/b/x;
.super Ljava/lang/Object;
.source "ImagePickerInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/B$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/y;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/b/y;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/x;->a:Lf/a/a/e/b/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/x;->a:Lf/a/a/e/b/b/y;

    iget-object v0, v0, Lf/a/a/e/b/b/y;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "AKS ENTEKHAB KON"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b/x;->a:Lf/a/a/e/b/b/y;

    iget-object v0, v0, Lf/a/a/e/b/b/y;->f:Ljava/lang/String;

    return-object v0
.end method
