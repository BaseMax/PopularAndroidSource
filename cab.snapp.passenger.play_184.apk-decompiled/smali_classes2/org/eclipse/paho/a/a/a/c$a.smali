.class final enum Lorg/eclipse/paho/a/a/a/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/paho/a/a/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum QUIESCING:Lorg/eclipse/paho/a/a/a/c$a;

.field public static final enum RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

.field public static final enum STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

.field private static final synthetic a:[Lorg/eclipse/paho/a/a/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    new-instance v0, Lorg/eclipse/paho/a/a/a/c$a;

    const/4 v1, 0x0

    const-string v2, "STOPPED"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/paho/a/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/a/a/a/c$a;->STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

    new-instance v0, Lorg/eclipse/paho/a/a/a/c$a;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lorg/eclipse/paho/a/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/a/a/a/c$a;->RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

    new-instance v0, Lorg/eclipse/paho/a/a/a/c$a;

    const/4 v3, 0x2

    const-string v4, "QUIESCING"

    invoke-direct {v0, v4, v3}, Lorg/eclipse/paho/a/a/a/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/paho/a/a/a/c$a;->QUIESCING:Lorg/eclipse/paho/a/a/a/c$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/paho/a/a/a/c$a;

    sget-object v4, Lorg/eclipse/paho/a/a/a/c$a;->STOPPED:Lorg/eclipse/paho/a/a/a/c$a;

    aput-object v4, v0, v1

    sget-object v1, Lorg/eclipse/paho/a/a/a/c$a;->RUNNING:Lorg/eclipse/paho/a/a/a/c$a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/paho/a/a/a/c$a;->QUIESCING:Lorg/eclipse/paho/a/a/a/c$a;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/paho/a/a/a/c$a;->a:[Lorg/eclipse/paho/a/a/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/paho/a/a/a/c$a;
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/paho/a/a/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/paho/a/a/a/c$a;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/paho/a/a/a/c$a;
    .locals 4

    .line 1
    sget-object v0, Lorg/eclipse/paho/a/a/a/c$a;->a:[Lorg/eclipse/paho/a/a/a/c$a;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/paho/a/a/a/c$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method