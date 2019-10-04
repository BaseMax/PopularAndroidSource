.class public abstract Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;
.super Landroidx/room/RoomDatabase;
.source "ActionLogDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;->l:Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract p()Lc/c/a/a/b/a/a/b/a;
.end method
