.class public Lc/b/a/c/d/f/g;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lc/b/a/c/d/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/d/f/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/d/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/d/f/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/d/f/g;

    invoke-direct {v0}, Lc/b/a/c/d/f/g;-><init>()V

    sput-object v0, Lc/b/a/c/d/f/g;->a:Lc/b/a/c/d/f/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/b/a/c/d/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/c/d/f/e<",
            "TZ;TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/c/d/f/g;->a:Lc/b/a/c/d/f/g;

    return-object v0
.end method


# virtual methods
.method public a(Lc/b/a/c/b/D;Lc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "TZ;>;",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
