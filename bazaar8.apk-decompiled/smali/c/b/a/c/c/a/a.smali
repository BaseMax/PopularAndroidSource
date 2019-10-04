.class public Lc/b/a/c/c/a/a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lc/b/a/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/u<",
        "Lc/b/a/c/c/l;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/e<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lc/b/a/c/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/t<",
            "Lc/b/a/c/c/l;",
            "Lc/b/a/c/c/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    .line 2
    invoke-static {v1, v0}, Lc/b/a/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/b/a/c/e;

    move-result-object v0

    sput-object v0, Lc/b/a/c/c/a/a;->a:Lc/b/a/c/e;

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/c/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/t<",
            "Lc/b/a/c/c/l;",
            "Lc/b/a/c/c/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/c/a/a;->b:Lc/b/a/c/c/t;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c/l;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/l;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/c/u$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p2, p0, Lc/b/a/c/c/a/a;->b:Lc/b/a/c/c/t;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p2, p1, p3, p3}, Lc/b/a/c/c/t;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/a/c/c/l;

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lc/b/a/c/c/a/a;->b:Lc/b/a/c/c/t;

    invoke-virtual {p2, p1, p3, p3, p1}, Lc/b/a/c/c/t;->a(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 6
    :cond_1
    :goto_0
    sget-object p2, Lc/b/a/c/c/a/a;->a:Lc/b/a/c/e;

    invoke-virtual {p4, p2}, Lc/b/a/c/f;->a(Lc/b/a/c/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 7
    new-instance p3, Lc/b/a/c/c/u$a;

    new-instance p4, Lc/b/a/c/a/k;

    invoke-direct {p4, p1, p2}, Lc/b/a/c/a/k;-><init>(Lc/b/a/c/c/l;I)V

    invoke-direct {p3, p1, p4}, Lc/b/a/c/c/u$a;-><init>(Lc/b/a/c/c;Lc/b/a/c/a/d;)V

    return-object p3
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/c/c/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/c/a/a;->a(Lc/b/a/c/c/l;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/b/a/c/c/l;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lc/b/a/c/c/l;

    invoke-virtual {p0, p1}, Lc/b/a/c/c/a/a;->a(Lc/b/a/c/c/l;)Z

    move-result p1

    return p1
.end method
