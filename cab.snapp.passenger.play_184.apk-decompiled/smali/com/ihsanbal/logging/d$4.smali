.class final Lcom/ihsanbal/logging/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihsanbal/logging/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ihsanbal/logging/d$a;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ihsanbal/logging/d$a;JZILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/ihsanbal/logging/d$4;->a:Lcom/ihsanbal/logging/d$a;

    iput-wide p2, p0, Lcom/ihsanbal/logging/d$4;->b:J

    iput-boolean p4, p0, Lcom/ihsanbal/logging/d$4;->c:Z

    iput p5, p0, Lcom/ihsanbal/logging/d$4;->d:I

    iput-object p6, p0, Lcom/ihsanbal/logging/d$4;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/ihsanbal/logging/d$4;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/ihsanbal/logging/d$4;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/ihsanbal/logging/d$4;->a:Lcom/ihsanbal/logging/d$a;

    iget-wide v1, p0, Lcom/ihsanbal/logging/d$4;->b:J

    iget-boolean v3, p0, Lcom/ihsanbal/logging/d$4;->c:Z

    iget v4, p0, Lcom/ihsanbal/logging/d$4;->d:I

    iget-object v5, p0, Lcom/ihsanbal/logging/d$4;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/ihsanbal/logging/d$4;->f:Ljava/util/List;

    iget-object v7, p0, Lcom/ihsanbal/logging/d$4;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/ihsanbal/logging/e;->a(Lcom/ihsanbal/logging/d$a;JZILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
