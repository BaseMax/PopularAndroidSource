.class public final Lc/e/a/a/j/z$a;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lc/e/a/a/j/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/j$a;

.field public b:Lc/e/a/a/e/j;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:Lc/e/a/a/n/v;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/e/e;

    invoke-direct {v0}, Lc/e/a/a/e/e;-><init>()V

    invoke-direct {p0, p1, v0}, Lc/e/a/a/j/z$a;-><init>(Lc/e/a/a/n/j$a;Lc/e/a/a/e/j;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/n/j$a;Lc/e/a/a/e/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/e/a/a/j/z$a;->a:Lc/e/a/a/n/j$a;

    .line 4
    iput-object p2, p0, Lc/e/a/a/j/z$a;->b:Lc/e/a/a/e/j;

    .line 5
    new-instance p1, Lc/e/a/a/n/t;

    invoke-direct {p1}, Lc/e/a/a/n/t;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/z$a;->e:Lc/e/a/a/n/v;

    const/high16 p1, 0x100000

    .line 6
    iput p1, p0, Lc/e/a/a/j/z$a;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lc/e/a/a/j/z;
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/z$a;->g:Z

    .line 2
    new-instance v0, Lc/e/a/a/j/z;

    iget-object v3, p0, Lc/e/a/a/j/z$a;->a:Lc/e/a/a/n/j$a;

    iget-object v4, p0, Lc/e/a/a/j/z$a;->b:Lc/e/a/a/e/j;

    iget-object v5, p0, Lc/e/a/a/j/z$a;->e:Lc/e/a/a/n/v;

    iget-object v6, p0, Lc/e/a/a/j/z$a;->c:Ljava/lang/String;

    iget v7, p0, Lc/e/a/a/j/z$a;->f:I

    iget-object v8, p0, Lc/e/a/a/j/z$a;->d:Ljava/lang/Object;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lc/e/a/a/j/z;-><init>(Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/e/j;Lc/e/a/a/n/v;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method
