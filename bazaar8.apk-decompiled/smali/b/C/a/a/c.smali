.class public Lb/C/a/a/c;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/C/a/a/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lb/C/a/a/b;Lb/C/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/C/a/c$a;

.field public final synthetic b:[Lb/C/a/a/b;


# direct methods
.method public constructor <init>(Lb/C/a/c$a;[Lb/C/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/C/a/a/c;->a:Lb/C/a/c$a;

    iput-object p2, p0, Lb/C/a/a/c;->b:[Lb/C/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/C/a/a/c;->a:Lb/C/a/c$a;

    iget-object v1, p0, Lb/C/a/a/c;->b:[Lb/C/a/a/b;

    invoke-static {v1, p1}, Lb/C/a/a/d$a;->a([Lb/C/a/a/b;Landroid/database/sqlite/SQLiteDatabase;)Lb/C/a/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/C/a/c$a;->b(Lb/C/a/b;)V

    return-void
.end method
