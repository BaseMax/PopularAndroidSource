.class public interface abstract Lcom/ihsanbal/logging/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/ihsanbal/logging/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/ihsanbal/logging/c$1;

    invoke-direct {v0}, Lcom/ihsanbal/logging/c$1;-><init>()V

    sput-object v0, Lcom/ihsanbal/logging/c;->DEFAULT:Lcom/ihsanbal/logging/c;

    return-void
.end method


# virtual methods
.method public abstract log(ILjava/lang/String;Ljava/lang/String;)V
.end method
