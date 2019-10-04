.class public Lb/C/a/a/d;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Lb/C/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/C/a/a/d$a;
    }
.end annotation


# instance fields
.field public final a:Lb/C/a/a/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lb/C/a/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/C/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lb/C/a/c$a;)Lb/C/a/a/d$a;

    move-result-object p1

    iput-object p1, p0, Lb/C/a/a/d;->a:Lb/C/a/a/d$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lb/C/a/c$a;)Lb/C/a/a/d$a;
    .locals 2

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lb/C/a/a/b;

    .line 2
    new-instance v1, Lb/C/a/a/d$a;

    invoke-direct {v1, p1, p2, v0, p3}, Lb/C/a/a/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lb/C/a/a/b;Lb/C/a/c$a;)V

    return-object v1
.end method

.method public a()Lb/C/a/b;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/C/a/a/d;->a:Lb/C/a/a/d$a;

    invoke-virtual {v0}, Lb/C/a/a/d$a;->a()Lb/C/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lb/C/a/a/d;->a:Lb/C/a/a/d$a;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
