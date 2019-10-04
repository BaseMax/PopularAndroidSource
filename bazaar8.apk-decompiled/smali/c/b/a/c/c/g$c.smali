.class public final Lc/b/a/c/c/g$c;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/g$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/c/c/h;

    invoke-direct {v0, p0}, Lc/b/a/c/c/h;-><init>(Lc/b/a/c/c/g$c;)V

    iput-object v0, p0, Lc/b/a/c/c/g$c;->a:Lc/b/a/c/c/g$a;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c/y;)Lc/b/a/c/c/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/y;",
            ")",
            "Lc/b/a/c/c/u<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/b/a/c/c/g;

    iget-object v0, p0, Lc/b/a/c/c/g$c;->a:Lc/b/a/c/c/g$a;

    invoke-direct {p1, v0}, Lc/b/a/c/c/g;-><init>(Lc/b/a/c/c/g$a;)V

    return-object p1
.end method
