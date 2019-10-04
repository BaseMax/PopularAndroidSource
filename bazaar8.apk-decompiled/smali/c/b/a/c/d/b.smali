.class public final Lc/b/a/c/d/b;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lc/b/a/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/d/b;

    invoke-direct {v0}, Lc/b/a/c/d/b;-><init>()V

    sput-object v0, Lc/b/a/c/d/b;->a:Lc/b/a/c/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/b/a/c/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/c/d/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/c/d/b;->a:Lc/b/a/c/i;

    check-cast v0, Lc/b/a/c/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/b/a/c/b/D;II)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/c/b/D<",
            "TT;>;II)",
            "Lc/b/a/c/b/D<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
