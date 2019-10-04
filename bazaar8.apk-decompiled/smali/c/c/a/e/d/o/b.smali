.class public final Lc/c/a/e/d/o/b;
.super Ljava/lang/Object;
.source "ReleaseNoteDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/o/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/o/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/e/d/o/b;

    invoke-direct {v0}, Lc/c/a/e/d/o/b;-><init>()V

    sput-object v0, Lc/c/a/e/d/o/b;->a:Lc/c/a/e/d/o/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/e/d/o/b;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/e/d/o/b;->a:Lc/c/a/e/d/o/b;

    return-object v0
.end method

.method public static b()Lc/c/a/e/d/o/a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/e/d/o/a;

    invoke-direct {v0}, Lc/c/a/e/d/o/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/o/a;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/e/d/o/b;->b()Lc/c/a/e/d/o/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/o/b;->get()Lc/c/a/e/d/o/a;

    move-result-object v0

    return-object v0
.end method
