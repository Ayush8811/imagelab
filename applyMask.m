## Copyright (C) 2022 Ayush
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} applyMask (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Ayush <ayush@ayush-Aspire-A715-75G>
## Created: 2022-06-12

function R = applyMask(I,M,a)
  [nx,ny]=size(I);
    [ox,oy]=size(a);
    final_img=zeros(ox,oy);
    for i=1:ox
      for j=1:oy
        sum=0;
        for k=1:3
          for l=1:3
            sum+=I(i+k-1,j+l-1)*M(k,l);
          endfor
        endfor
        final_img(i,j)=round(sum);
      endfor
    endfor
    R=final_img;
endfunction
