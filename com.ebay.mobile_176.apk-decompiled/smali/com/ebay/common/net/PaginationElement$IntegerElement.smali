.class final Lcom/ebay/common/net/PaginationElement$IntegerElement;
.super Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;
.source "PaginationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/PaginationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntegerElement"
.end annotation


# instance fields
.field protected final field:Ljava/lang/reflect/Field;

.field protected final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/ebay/nautilus/kernel/util/SaxHandler$IntegerElement;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/ebay/common/net/PaginationElement$IntegerElement;->object:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/ebay/common/net/PaginationElement$IntegerElement;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method protected setValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/PaginationElement$IntegerElement;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/ebay/common/net/PaginationElement$IntegerElement;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 76
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 72
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
