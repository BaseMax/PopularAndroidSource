.class public Lc/b/a/g/b/a$a;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Lc/b/a/g/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/g/b/c<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lc/b/a/g/b/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lc/b/a/g/b/b<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Lc/b/a/g/b/a;->a:Lc/b/a/g/b/a;

    return-object p1
.end method
