.class public final synthetic Lc/e/a/b/g/f/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/na;


# instance fields
.field public final a:Lc/e/a/b/g/f/ha;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/ha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/g/f/ia;->a:Lc/e/a/b/g/f/ha;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/e/a/b/g/f/ia;->a:Lc/e/a/b/g/f/ha;

    invoke-virtual {v0}, Lc/e/a/b/g/f/ha;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
