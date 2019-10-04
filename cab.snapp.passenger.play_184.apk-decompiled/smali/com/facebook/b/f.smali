.class public Lcom/facebook/b/f;
.super Lcom/facebook/b/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/b/f$a;,
        Lcom/facebook/b/f$b;
    }
.end annotation


# instance fields
.field protected final d:Ljava/io/File;

.field protected final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/b/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lcom/facebook/b/f;->d:Ljava/io/File;

    .line 51
    iput-object p4, p0, Lcom/facebook/b/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Lcom/facebook/b/o$e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/facebook/b/f$b;

    invoke-direct {v0, p0, p0}, Lcom/facebook/b/f$b;-><init>(Lcom/facebook/b/f;Lcom/facebook/b/o;)V

    return-object v0
.end method
