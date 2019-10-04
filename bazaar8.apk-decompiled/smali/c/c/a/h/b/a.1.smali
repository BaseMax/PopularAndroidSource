.class public final Lc/c/a/h/b/a;
.super Ljava/lang/Object;
.source "ActionLogModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;)Lc/c/a/a/b/a/a/b/a;
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;->p()Lc/c/a/a/b/a/a/b/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;

    const-string v1, "actionLog-db"

    .line 2
    invoke-static {p1, v0, v1}, Lb/z/u;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->b()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "Room.databaseBuilder(\n  \u2026uctiveMigration().build()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;

    return-object p1
.end method
