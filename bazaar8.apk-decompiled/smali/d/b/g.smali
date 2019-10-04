.class public final Ld/b/g;
.super Ljava/lang/Object;
.source "MapProviderFactory.java"

# interfaces
.implements Ld/b/c;
.implements Ld/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/b/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Ljava/util/Map<",
        "TK;",
        "Lg/a/a<",
        "TV;>;>;>;",
        "Ld/a<",
        "Ljava/util/Map<",
        "TK;",
        "Lg/a/a<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lg/a/a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Lg/a/a<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ld/b/g;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ld/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld/b/g;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a(I)Ld/b/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ld/b/g$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/b/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/b/g$a;-><init>(ILd/b/f;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/b/g;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lg/a/a<",
            "TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ld/b/g;->a:Ljava/util/Map;

    return-object v0
.end method
