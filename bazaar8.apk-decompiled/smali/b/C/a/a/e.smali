.class public final Lb/C/a/a/e;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Lb/C/a/c$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/c$b;)Lb/C/a/c;
    .locals 3

    .line 1
    new-instance v0, Lb/C/a/a/d;

    iget-object v1, p1, Lb/C/a/c$b;->a:Landroid/content/Context;

    iget-object v2, p1, Lb/C/a/c$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lb/C/a/c$b;->c:Lb/C/a/c$a;

    invoke-direct {v0, v1, v2, p1}, Lb/C/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lb/C/a/c$a;)V

    return-object v0
.end method
