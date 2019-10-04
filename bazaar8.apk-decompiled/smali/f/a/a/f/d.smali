.class public Lf/a/a/f/d;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lc/f/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZILf/a/a/f/e$a;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/f/e$a;

.field public final synthetic b:Lf/a/a/f/e;


# direct methods
.method public constructor <init>(Lf/a/a/f/e;Lf/a/a/f/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/f/d;->b:Lf/a/a/f/e;

    iput-object p2, p0, Lf/a/a/f/d;->a:Lf/a/a/f/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/f/d;->a:Lf/a/a/f/e$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lf/a/a/f/e$a;->a()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/f/d;->a:Lf/a/a/f/e$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/a/a/f/e$a;->onSuccess()V

    :cond_0
    return-void
.end method
