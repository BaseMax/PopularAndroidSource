.class public Lf/a/a/c/a/b;
.super Ljava/lang/Object;
.source "AppInfoHandler.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lf/a/a/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf/a/a/b/a;->a:Lf/a/a/c/a;

    iput-object v0, p0, Lf/a/a/c/a/b;->b:Lf/a/a/c/a;

    .line 3
    iput-object p1, p0, Lf/a/a/c/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf/a/a/c/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/c/a/b;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/c/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/c/e<",
            "Lir/cafebazaar/inline/platform/InlineApplication;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lf/a/a/c/e;->a()V

    .line 3
    iget-object v0, p0, Lf/a/a/c/a/b;->b:Lf/a/a/c/a;

    iget-object v1, p0, Lf/a/a/c/a/b;->a:Ljava/lang/String;

    new-instance v2, Lf/a/a/c/a/a;

    invoke-direct {v2, p0, p1}, Lf/a/a/c/a/a;-><init>(Lf/a/a/c/a/b;Lf/a/a/c/e;)V

    invoke-virtual {v0, v1, v2}, Lf/a/a/c/a;->a(Ljava/lang/String;Lf/a/a/c/b;)V

    return-void
.end method
