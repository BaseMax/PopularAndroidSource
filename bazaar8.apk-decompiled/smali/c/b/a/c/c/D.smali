.class public Lc/b/a/c/c/D;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lc/b/a/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/D$a;,
        Lc/b/a/c/c/D$b;,
        Lc/b/a/c/c/D$d;,
        Lc/b/a/c/c/D$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/u<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lc/b/a/c/c/D$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/D$c<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "file"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.resource"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "content"

    aput-object v3, v1, v2

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lc/b/a/c/c/D;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/c/D$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/D$c<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/c/D;->b:Lc/b/a/c/c/D$c;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/c/u$a<",
            "TData;>;"
        }
    .end annotation

    .line 3
    new-instance p2, Lc/b/a/c/c/u$a;

    new-instance p3, Lc/b/a/h/b;

    invoke-direct {p3, p1}, Lc/b/a/h/b;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lc/b/a/c/c/D;->b:Lc/b/a/c/c/D$c;

    invoke-interface {p4, p1}, Lc/b/a/c/c/D$c;->a(Landroid/net/Uri;)Lc/b/a/c/a/d;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lc/b/a/c/c/u$a;-><init>(Lc/b/a/c/c;Lc/b/a/c/a/d;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/c/D;->a(Landroid/net/Uri;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    .line 4
    sget-object v0, Lc/b/a/c/c/D;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lc/b/a/c/c/D;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
