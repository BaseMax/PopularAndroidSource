.class final Lcom/ihsanbal/logging/d$3;
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

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ihsanbal/logging/d$a;JZILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/ihsanbal/logging/d$3;->a:Lcom/ihsanbal/logging/d$a;

    iput-wide p2, p0, Lcom/ihsanbal/logging/d$3;->b:J

    iput-boolean p4, p0, Lcom/ihsanbal/logging/d$3;->c:Z

    iput p5, p0, Lcom/ihsanbal/logging/d$3;->d:I

    iput-object p6, p0, Lcom/ihsanbal/logging/d$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/ihsanbal/logging/d$3;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/ihsanbal/logging/d$3;->g:Ljava/util/List;

    iput-object p9, p0, Lcom/ihsanbal/logging/d$3;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/ihsanbal/logging/d$3;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 174
    iget-object v0, p0, Lcom/ihsanbal/logging/d$3;->a:Lcom/ihsanbal/logging/d$a;

    iget-wide v1, p0, Lcom/ihsanbal/logging/d$3;->b:J

    iget-boolean v3, p0, Lcom/ihsanbal/logging/d$3;->c:Z

    iget v4, p0, Lcom/ihsanbal/logging/d$3;->d:I

    iget-object v5, p0, Lcom/ihsanbal/logging/d$3;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/ihsanbal/logging/d$3;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/ihsanbal/logging/d$3;->g:Ljava/util/List;

    iget-object v8, p0, Lcom/ihsanbal/logging/d$3;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/ihsanbal/logging/d$3;->i:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/ihsanbal/logging/e;->a(Lcom/ihsanbal/logging/d$a;JZILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
