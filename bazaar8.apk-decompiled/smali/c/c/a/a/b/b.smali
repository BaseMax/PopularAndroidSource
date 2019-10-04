.class public final Lc/c/a/a/b/b;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsTracker_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/a/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/a/b/b;

    invoke-direct {v0}, Lc/c/a/a/b/b;-><init>()V

    sput-object v0, Lc/c/a/a/b/b;->a:Lc/c/a/a/b/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/c/a/a/b/b;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/a/b/b;->a:Lc/c/a/a/b/b;

    return-object v0
.end method

.method public static b()Lc/c/a/a/b/a;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/a/b/a;

    invoke-direct {v0}, Lc/c/a/a/b/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/a/b/a;
    .locals 1

    .line 2
    invoke-static {}, Lc/c/a/a/b/b;->b()Lc/c/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/a/b/b;->get()Lc/c/a/a/b/a;

    move-result-object v0

    return-object v0
.end method
