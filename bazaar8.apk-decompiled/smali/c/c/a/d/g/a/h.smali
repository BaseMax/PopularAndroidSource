.class public final Lc/c/a/d/g/a/h;
.super Ljava/lang/Object;
.source "ImageLoader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/g/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lb/i/a/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/i/a/q;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lb/i/a/n$d;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lb/i/a/q;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/i/a/n$d;Ljava/lang/String;Lb/i/a/q;I)V
    .locals 0

    iput-object p1, p0, Lc/c/a/d/g/a/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/d/g/a/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/d/g/a/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lc/c/a/d/g/a/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lc/c/a/d/g/a/h;->e:Lb/i/a/n$d;

    iput-object p6, p0, Lc/c/a/d/g/a/h;->f:Ljava/lang/String;

    iput-object p7, p0, Lc/c/a/d/g/a/h;->g:Lb/i/a/q;

    iput p8, p0, Lc/c/a/d/g/a/h;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/d/g/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/c/a/d/g/a/c;->a(Landroid/content/Context;)Lc/c/a/d/g/a/f;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/c/a/d/g/a/f;->c()Lc/c/a/d/g/a/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/d/g/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/e;->a(Ljava/lang/String;)Lc/c/a/d/g/a/e;

    move-result-object v0

    .line 3
    new-instance v1, Lc/c/a/d/g/a/g;

    invoke-direct {v1, p0}, Lc/c/a/d/g/a/g;-><init>(Lc/c/a/d/g/a/h;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/g/a/e;->b(Lc/b/a/g/f;)Lc/c/a/d/g/a/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lc/b/a/k;->b()Lc/b/a/g/b;

    return-void
.end method
