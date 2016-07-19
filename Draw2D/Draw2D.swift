//
//  Draw2D.swift
//  Draw2D
//
//  Created by JHJG on 2016. 7. 18..
//  Copyright © 2016년 KangJungu. All rights reserved.
//

import UIKit

class Draw2D: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        /**
         두점 사이의 경로를 선언함으로써 한개의 선을 그린다.
         **/
        //뷰의 그래픽 콘텍스트 얻기
        let context = UIGraphicsGetCurrentContext()
        //그리기에 사용할 선의두께 설정
        CGContextSetLineWidth(context, 2.0)
        
        //색 참조체
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let componets:[CGFloat] = [0.0,0.0,1.0,1.0]
        let color = CGColorCreate(colorSpace, componets)
        
        //선을 그리는데 사용할 색상
        CGContextSetStrokeColorWithColor(context, color)
        
        //선을 그리기 위한 시작점으로 이동 ( 화면의 왼쪽 상단의 점을 시작점으로 함)
        CGContextMoveToPoint(context, 30, 30)
        
        //끝점을 300,400으로 설정
        CGContextAddLineToPoint(context, 300, 400)
        
        CGContextStrokePath(context)
        
    }

}
